.class public Lcom/artfulbits/aiCharts/Types/ChartCandleStickType;
.super Lcom/artfulbits/aiCharts/Base/ChartType;


# static fields
.field public static final PRICE_DOWN_COLOR:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRICE_UP_COLOR:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
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
    .locals 4

    const-string v0, "candle-price_up"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartCandleStickType;

    const-class v2, Ljava/lang/Integer;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartCandleStickType;->PRICE_UP_COLOR:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "candle-price_down"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartCandleStickType;

    const-class v2, Ljava/lang/Integer;

    const/high16 v3, -0x1000000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartCandleStickType;->PRICE_DOWN_COLOR:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;-><init>()V

    sget v0, Lcom/artfulbits/aiCharts/Types/ChartCandleStickType;->FLAG_SIDE_BY_SIDE:I

    sget v1, Lcom/artfulbits/aiCharts/Types/ChartCandleStickType;->FLAG_SUPPORT_3D:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/artfulbits/aiCharts/Types/ChartCandleStickType;->m_flags:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 34

    move-object/from16 v10, p1

    iget-object v0, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual/range {p1 .. p1}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getSideBySideOffset()Lcom/artfulbits/aiCharts/Base/DoubleRange;

    move-result-object v11

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v1

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointsCache()Ljava/util/List;

    move-result-object v12

    iget v13, v1, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->LowValueIndex:I

    iget v14, v1, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->HighValueIndex:I

    iget v15, v1, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->OpenValueIndex:I

    iget v9, v1, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->CloseValueIndex:I

    sget-object v1, Lcom/artfulbits/aiCharts/Types/ChartCandleStickType;->PRICE_UP_COLOR:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/artfulbits/aiCharts/Types/ChartCandleStickType;->PRICE_DOWN_COLOR:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v0, v2}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v16, v2, -0x1

    iget-object v2, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v2

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMinimum()D

    move-result-wide v17

    iget-object v2, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v2

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMaximum()D

    move-result-wide v19

    const/4 v7, 0x0

    move-object v2, v12

    move-wide/from16 v3, v17

    move-wide/from16 v5, v19

    move/from16 v8, v16

    invoke-static/range {v2 .. v8}, Lcom/artfulbits/aiCharts/Types/ChartCandleStickType;->getVisibleFrom(Ljava/util/List;DDII)I

    move-result v21

    move/from16 v7, v21

    invoke-static/range {v2 .. v8}, Lcom/artfulbits/aiCharts/Types/ChartCandleStickType;->getVisibleTo(Ljava/util/List;DDII)I

    move-result v7

    new-instance v8, Landroid/graphics/PointF;

    invoke-direct {v8}, Landroid/graphics/PointF;-><init>()V

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    move/from16 v3, v21

    :goto_0
    if-gt v3, v7, :cond_1

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v16

    invoke-virtual {v11}, Lcom/artfulbits/aiCharts/Base/DoubleRange;->center()D

    move-result-wide v18

    add-double v16, v16, v18

    invoke-virtual {v4, v13}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v18

    move v2, v0

    move-object/from16 v0, p1

    move-object/from16 v22, v12

    move/from16 v23, v13

    move v12, v1

    move v13, v2

    move-wide/from16 v1, v16

    move/from16 v21, v3

    move-object/from16 v24, v4

    move-wide/from16 v3, v18

    move-object/from16 v25, v5

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    invoke-virtual/range {v24 .. v24}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v0

    invoke-virtual {v11}, Lcom/artfulbits/aiCharts/Base/DoubleRange;->center()D

    move-result-wide v2

    add-double v1, v0, v2

    move-object/from16 v5, v24

    invoke-virtual {v5, v14}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v3

    move-object/from16 v0, p1

    move-object/from16 v26, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    invoke-virtual/range {v26 .. v26}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v0

    iget-wide v2, v11, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Minimum:D

    add-double v1, v0, v2

    move-object/from16 v5, v26

    invoke-virtual {v5, v15}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v3

    invoke-virtual {v5}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v16

    move-object/from16 v28, v6

    move/from16 v27, v7

    iget-wide v6, v11, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Maximum:D

    add-double v6, v16, v6

    invoke-virtual {v5, v9}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v16

    move-object/from16 v0, p1

    move-object/from16 v29, v11

    move/from16 v30, v14

    move-object/from16 v11, v28

    move-object v14, v5

    move-wide v5, v6

    move/from16 v31, v12

    move/from16 v18, v27

    move-object v12, v8

    move-wide/from16 v7, v16

    move/from16 v32, v13

    move v13, v9

    move-object/from16 v9, v25

    invoke-virtual/range {v0 .. v9}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getRect(DDDDLandroid/graphics/RectF;)V

    iget-object v0, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    invoke-virtual {v0, v12, v11, v14}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    invoke-virtual {v14, v15}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v0

    invoke-virtual {v14, v13}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v2

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    move-object/from16 v2, v25

    move/from16 v1, v32

    invoke-virtual {v0, v2, v14, v1}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawRect(Landroid/graphics/RectF;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;I)V

    move/from16 v3, v31

    goto :goto_1

    :cond_0
    move-object/from16 v2, v25

    move/from16 v1, v32

    iget-object v0, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    move/from16 v3, v31

    invoke-virtual {v0, v2, v14, v3}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawRect(Landroid/graphics/RectF;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;I)V

    :goto_1
    iget-object v0, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    invoke-virtual {v0, v2, v14}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->strokeRect(Landroid/graphics/RectF;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    add-int/lit8 v0, v21, 0x1

    move-object v5, v2

    move-object v6, v11

    move-object v8, v12

    move v9, v13

    move/from16 v7, v18

    move-object/from16 v12, v22

    move/from16 v13, v23

    move-object/from16 v11, v29

    move/from16 v14, v30

    move/from16 v33, v3

    move v3, v0

    move v0, v1

    move/from16 v1, v33

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method public getRequiredUsages()[Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;->LowValue:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;->HighValue:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;->OpenValue:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;->CloseValue:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getYRange(Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;)V
    .locals 4

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [I

    iget v2, v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->LowValueIndex:I

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->HighValueIndex:I

    const/4 v3, 0x1

    aput v2, v1, v3

    iget v2, v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->OpenValueIndex:I

    const/4 v3, 0x2

    aput v2, v1, v3

    iget v0, v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->CloseValueIndex:I

    const/4 v2, 0x3

    aput v0, v1, v2

    invoke-static {p0, p1, p2, v1}, Lcom/artfulbits/aiCharts/Types/ChartCandleStickType;->computeYRange(Lcom/artfulbits/aiCharts/Base/ChartType;Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;[I)V

    return-void
.end method
