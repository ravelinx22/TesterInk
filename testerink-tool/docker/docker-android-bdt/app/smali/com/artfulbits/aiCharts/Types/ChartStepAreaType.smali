.class public Lcom/artfulbits/aiCharts/Types/ChartStepAreaType;
.super Lcom/artfulbits/aiCharts/Base/ChartType;


# static fields
.field public static final BORDER_STYLE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute<",
            "Lcom/artfulbits/aiCharts/Enums/ChartBorderStyle;",
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
    .locals 1

    sget-object v0, Lcom/artfulbits/aiCharts/Types/ChartStepLineType;->INVERSED:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartStepAreaType;->INVERSED:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    sget-object v0, Lcom/artfulbits/aiCharts/Types/ChartAreaType;->BORDER_STYLE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartStepAreaType;->BORDER_STYLE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;-><init>()V

    sget v0, Lcom/artfulbits/aiCharts/Types/ChartStepAreaType;->FLAG_ORIGIN_DEPENDENT:I

    iput v0, p0, Lcom/artfulbits/aiCharts/Types/ChartStepAreaType;->m_flags:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 23

    move-object/from16 v6, p1

    iget-object v7, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointsCache()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v1, Lcom/artfulbits/aiCharts/Types/ChartStepAreaType;->INVERSED:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    invoke-virtual {v7}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v0

    iget v5, v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->YValueIndex:I

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget-object v2, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v2

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMinimum()D

    move-result-wide v2

    iget-object v4, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v4

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMaximum()D

    move-result-wide v17

    iget-object v4, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->YAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getOrigin()D

    move-result-wide v19

    const/4 v13, 0x0

    move-object v8, v15

    move-wide v9, v2

    move-wide/from16 v11, v17

    move v14, v0

    invoke-static/range {v8 .. v14}, Lcom/artfulbits/aiCharts/Types/ChartStepAreaType;->getVisibleFrom(Ljava/util/List;DDII)I

    move-result v4

    move v13, v4

    invoke-static/range {v8 .. v14}, Lcom/artfulbits/aiCharts/Types/ChartStepAreaType;->getVisibleTo(Ljava/util/List;DDII)I

    move-result v8

    sget-object v0, Lcom/artfulbits/aiCharts/Types/ChartStepAreaType;->BORDER_STYLE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v7, v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/artfulbits/aiCharts/Enums/ChartBorderStyle;->Simple:Lcom/artfulbits/aiCharts/Enums/ChartBorderStyle;

    if-ne v0, v2, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v9, 0x0

    :goto_0
    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11}, Landroid/graphics/PointF;-><init>()V

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v12}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v1

    invoke-virtual {v12, v5}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v13

    move-object/from16 v0, p1

    move-object/from16 v21, v12

    move v12, v4

    move-wide v3, v13

    move v13, v5

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    iget v0, v11, Landroid/graphics/PointF;->x:F

    iget v1, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    add-int/lit8 v4, v12, 0x1

    move v14, v4

    move-object/from16 v0, v21

    :goto_1
    if-gt v14, v8, :cond_2

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    if-eqz v16, :cond_1

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v1

    invoke-virtual {v5, v13}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v3

    move-object/from16 v0, p1

    move-object/from16 v22, v5

    :goto_2
    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    iget v0, v11, Landroid/graphics/PointF;->x:F

    iget v1, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_3

    :cond_1
    move-object/from16 v22, v5

    invoke-virtual/range {v22 .. v22}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v1

    invoke-virtual {v0, v13}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v3

    move-object/from16 v0, p1

    goto :goto_2

    :goto_3
    invoke-virtual/range {v22 .. v22}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v1

    move-object/from16 v5, v22

    invoke-virtual {v5, v13}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v3

    move-object/from16 v0, p1

    move-object/from16 v17, v5

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    iget v0, v11, Landroid/graphics/PointF;->x:F

    iget v1, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v17

    goto :goto_1

    :cond_2
    if-eqz v9, :cond_3

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0, v10}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    :goto_4
    move-object v9, v0

    goto :goto_5

    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    :goto_5
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v1

    move-object/from16 v0, p1

    move-wide/from16 v3, v19

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    iget v0, v11, Landroid/graphics/PointF;->x:F

    iget v1, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v1

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    iget v0, v11, Landroid/graphics/PointF;->x:F

    iget v1, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v10}, Landroid/graphics/Path;->close()V

    iget-boolean v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->IsRegionEnabled:Z

    if-eqz v0, :cond_4

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    iget-object v1, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v6, v10, v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->addRegion(Landroid/graphics/Path;Landroid/graphics/Rect;Ljava/lang/Object;)V

    :cond_4
    if-nez v9, :cond_5

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    iget-object v1, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v10, v7, v1}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawPath(Landroid/graphics/Path;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;Landroid/graphics/Rect;)V

    return-void

    :cond_5
    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    iget-object v1, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v10, v7, v1}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->fillPath(Landroid/graphics/Path;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;Landroid/graphics/Rect;)V

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    iget-object v1, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getBorderColor()I

    move-result v1

    invoke-virtual {v0, v9, v7, v1}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->strokePath(Landroid/graphics/Path;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;I)V

    :cond_6
    return-void
.end method

.method protected drawIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Types/ChartStepAreaType;->m_iconPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Lcom/artfulbits/aiCharts/Types/ChartStepAreaType;->drawIconInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;Landroid/graphics/Paint;Z)V

    return-void
.end method
