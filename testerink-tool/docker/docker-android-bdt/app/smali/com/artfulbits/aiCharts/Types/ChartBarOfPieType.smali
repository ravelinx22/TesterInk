.class public Lcom/artfulbits/aiCharts/Types/ChartBarOfPieType;
.super Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;-><init>()V

    return-void
.end method

.method private a(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Ljava/util/List;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;",
            "Ljava/util/List<",
            "Lcom/artfulbits/aiCharts/Base/ChartPoint;",
            ">;",
            "Landroid/graphics/Rect;",
            ")",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    iget-object v0, v7, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v0

    iget v11, v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->YValueIndex:I

    new-array v12, v10, [Lcom/artfulbits/aiCharts/Types/ChartPieType$a;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v13, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v1, v10, :cond_2

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v4, v11}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v5

    add-double/2addr v13, v5

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getShowLabel()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getMarkerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    move-object/from16 v15, p0

    goto :goto_2

    :cond_1
    :goto_1
    new-instance v5, Lcom/artfulbits/aiCharts/Types/ChartPieType$a;

    move-object/from16 v15, p0

    invoke-direct {v5, v15, v4}, Lcom/artfulbits/aiCharts/Types/ChartPieType$a;-><init>(Lcom/artfulbits/aiCharts/Types/ChartPieType;Lcom/artfulbits/aiCharts/Base/ChartPoint;)V

    aput-object v5, v12, v1

    sget-object v5, Lcom/artfulbits/aiCharts/Types/ChartBarOfPieType$1;->a:[I

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getHLabelAlignment()Lcom/artfulbits/aiCharts/Enums/Alignment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Enums/Alignment;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    aget-object v4, v12, v1

    iget v4, v4, Lcom/artfulbits/aiCharts/Types/ChartPieType$a;->b:I

    add-int/2addr v3, v4

    goto :goto_2

    :pswitch_1
    aget-object v4, v12, v1

    iget v4, v4, Lcom/artfulbits/aiCharts/Types/ChartPieType$a;->b:I

    add-int/2addr v2, v4

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v15, p0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int v4, v2, v3

    if-le v4, v1, :cond_3

    div-int/lit8 v1, v1, 0x2

    goto :goto_3

    :cond_3
    sub-int/2addr v1, v4

    :goto_3
    iget v4, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v3

    iput v4, v9, Landroid/graphics/Rect;->left:I

    iget v3, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v2

    iput v3, v9, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v6, v2

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    div-int/lit8 v16, v1, 0x2

    sub-int v2, v2, v16

    int-to-float v1, v2

    iput v1, v5, Landroid/graphics/RectF;->left:F

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    add-int v1, v1, v16

    int-to-float v1, v1

    iput v1, v5, Landroid/graphics/RectF;->right:F

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v10, :cond_5

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    aget-object v0, v12, v3

    move/from16 v17, v10

    float-to-double v9, v6

    invoke-virtual {v2, v11}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v18

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v18

    div-double/2addr v9, v13

    double-to-float v1, v9

    iget v9, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v9, v1

    iput v9, v5, Landroid/graphics/RectF;->bottom:F

    iget-object v1, v7, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    invoke-virtual {v1, v5, v9}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawRect(Landroid/graphics/RectF;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getHLabelAlignment()Lcom/artfulbits/aiCharts/Enums/Alignment;

    move-result-object v9

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getVLabelAlignment()Lcom/artfulbits/aiCharts/Enums/Alignment;

    move-result-object v0

    sget-object v1, Lcom/artfulbits/aiCharts/Types/ChartBarOfPieType$1;->a:[I

    invoke-virtual {v9}, Lcom/artfulbits/aiCharts/Enums/Alignment;->ordinal()I

    move-result v10

    aget v1, v1, v10

    packed-switch v1, :pswitch_data_1

    goto :goto_6

    :pswitch_2
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    goto :goto_5

    :pswitch_3
    iget v1, v5, Landroid/graphics/RectF;->right:F

    goto :goto_5

    :pswitch_4
    iget v1, v5, Landroid/graphics/RectF;->left:F

    :goto_5
    iput v1, v4, Landroid/graphics/PointF;->x:F

    :goto_6
    sget-object v1, Lcom/artfulbits/aiCharts/Types/ChartBarOfPieType$1;->a:[I

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Enums/Alignment;->ordinal()I

    move-result v10

    aget v1, v1, v10

    packed-switch v1, :pswitch_data_2

    goto :goto_8

    :pswitch_5
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    goto :goto_7

    :pswitch_6
    sget-object v0, Lcom/artfulbits/aiCharts/Enums/Alignment;->Near:Lcom/artfulbits/aiCharts/Enums/Alignment;

    iget v1, v5, Landroid/graphics/RectF;->bottom:F

    goto :goto_7

    :pswitch_7
    sget-object v0, Lcom/artfulbits/aiCharts/Enums/Alignment;->Far:Lcom/artfulbits/aiCharts/Enums/Alignment;

    iget v1, v5, Landroid/graphics/RectF;->top:F

    :goto_7
    iput v1, v4, Landroid/graphics/PointF;->y:F

    :goto_8
    move-object v10, v0

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getMarkerSize()Landroid/graphics/Point;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v19, v3

    move-object v3, v4

    move-object/from16 v20, v4

    move-object v4, v9

    move-object v9, v5

    move-object v5, v10

    move v10, v6

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/artfulbits/aiCharts/Types/ChartBarOfPieType;->drawMarker(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Lcom/artfulbits/aiCharts/Base/ChartPoint;Landroid/graphics/PointF;Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;Landroid/graphics/Point;)V

    goto :goto_9

    :cond_4
    move/from16 v19, v3

    move-object/from16 v20, v4

    move-object v9, v5

    move v10, v6

    :goto_9
    iget v0, v9, Landroid/graphics/RectF;->bottom:F

    iput v0, v9, Landroid/graphics/RectF;->top:F

    add-int/lit8 v3, v19, 0x1

    move-object v5, v9

    move v6, v10

    move/from16 v10, v17

    move-object/from16 v4, v20

    move-object/from16 v9, p3

    goto/16 :goto_4

    :cond_5
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    sub-int v0, v0, v16

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    sub-int v1, v1, v16

    move-object/from16 v2, p3

    iput v0, v2, Landroid/graphics/Rect;->left:I

    iput v1, v2, Landroid/graphics/Rect;->right:I

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 28

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v7, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v1, Lcom/artfulbits/aiCharts/Types/ChartBarOfPieType;->PLOTS_SIZE_SCALE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object v2, v7, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v3, Lcom/artfulbits/aiCharts/Types/ChartBarOfPieType;->PLOTS_GAP_SCALE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, v7, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v5, Lcom/artfulbits/aiCharts/Types/ChartBarOfPieType;->SPLIT_MODE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v4, v5}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;

    iget-object v5, v7, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v8, Lcom/artfulbits/aiCharts/Types/ChartBarOfPieType;->SPLIT_VALUE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v5, v8}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    new-instance v5, Landroid/graphics/Rect;

    iget-object v10, v7, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    invoke-direct {v5, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v10, Landroid/graphics/Rect;

    iget-object v11, v7, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    invoke-direct {v10, v11}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v11, v7, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v11}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointsCache()Ljava/util/List;

    move-result-object v11

    iget-object v12, v7, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v12}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPoints()Lcom/artfulbits/aiCharts/Base/ChartPointCollection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    int-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v13, v8

    double-to-int v13, v13

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    move-object/from16 v16, v10

    const/4 v10, 0x1

    move-object/from16 v17, v5

    new-array v5, v10, [D

    move-object/from16 v18, v11

    const-wide/16 v10, 0x0

    move-wide/from16 v19, v0

    const/4 v0, 0x0

    aput-wide v10, v5, v0

    invoke-direct {v6, v10, v11, v5}, Lcom/artfulbits/aiCharts/Base/ChartPoint;-><init>(D[D)V

    iget-object v1, v7, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Chart:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->getPalette()Lcom/artfulbits/aiCharts/Base/ChartPalette;

    move-result-object v1

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/artfulbits/aiCharts/Base/ChartPalette;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->setBackColor(Ljava/lang/Integer;)V

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide/from16 v21, v10

    const/4 v1, 0x0

    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    move-object/from16 v5, v18

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v10, v18

    check-cast v10, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v10, v0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v10

    add-double v21, v21, v10

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v18, v5

    const-wide/16 v10, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v5, v18

    const/4 v1, 0x0

    const-wide/16 v10, 0x0

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    move-object/from16 v25, v5

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v23

    sget-object v5, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;->Custom:Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;

    if-ne v4, v5, :cond_2

    sget-object v5, Lcom/artfulbits/aiCharts/Types/ChartBarOfPieType;->SPLIT_POINT:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v0, v5}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_3

    :cond_1
    :goto_2
    const/4 v5, 0x0

    goto :goto_4

    :cond_2
    :goto_3
    sget-object v5, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;->Value:Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;

    if-ne v4, v5, :cond_3

    cmpg-double v5, v23, v8

    if-ltz v5, :cond_1

    :cond_3
    sget-object v5, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;->Position:Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;

    if-ne v4, v5, :cond_4

    invoke-interface {v12, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-ge v5, v13, :cond_1

    :cond_4
    sget-object v5, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;->Percentage:Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;

    if-ne v4, v5, :cond_5

    const-wide/high16 v26, 0x4059000000000000L    # 100.0

    mul-double v23, v23, v26

    div-double v23, v23, v21

    cmpg-double v5, v23, v8

    if-gez v5, :cond_5

    goto :goto_2

    :goto_4
    invoke-virtual {v0, v5}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v23

    add-double v10, v10, v23

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v5, v25

    goto :goto_1

    :cond_6
    invoke-virtual {v6, v10, v11}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->setY(D)V

    iget-object v0, v7, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    iget-object v2, v7, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double v4, v19, v4

    div-double/2addr v2, v4

    iget-object v4, v7, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v4, v0

    sub-double/2addr v4, v2

    move-object/from16 v0, v17

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v8, v4

    double-to-int v1, v8

    iput v1, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v1, v16

    iget v4, v1, Landroid/graphics/Rect;->right:I

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v4, v2

    double-to-int v2, v4

    iput v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ge v2, v3, :cond_7

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    :cond_7
    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double v10, v10, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v21, v21, v2

    div-double v10, v10, v21

    double-to-int v2, v10

    neg-int v2, v2

    move-object v3, v6

    move-object/from16 v6, p0

    invoke-virtual {v6, v7, v14, v0, v2}, Lcom/artfulbits/aiCharts/Types/ChartBarOfPieType;->drawPie(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Ljava/util/List;Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v8

    invoke-direct {v6, v7, v15, v1}, Lcom/artfulbits/aiCharts/Types/ChartBarOfPieType;->a(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Ljava/util/List;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v9

    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10}, Landroid/graphics/PointF;-><init>()V

    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11}, Landroid/graphics/PointF;-><init>()V

    int-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v2, v0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v3, v8

    move-object v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Types/ChartBarOfPieType;->computePointCorners(Lcom/artfulbits/aiCharts/Base/ChartPoint;FLandroid/graphics/Rect;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    iget-object v0, v7, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    iget-object v1, v7, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v2, Lcom/artfulbits/aiCharts/Types/ChartBarOfPieType;->LINES_COLOR:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_a

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getLineWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v1, v10, Landroid/graphics/PointF;->y:F

    iget v2, v9, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_8

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v12

    iget v13, v10, Landroid/graphics/PointF;->x:F

    iget v14, v10, Landroid/graphics/PointF;->y:F

    iget v1, v9, Landroid/graphics/Rect;->left:I

    int-to-float v15, v1

    iget v1, v9, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    :goto_6
    move/from16 v16, v1

    move-object/from16 v17, v5

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_7

    :cond_8
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v12, v1

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v13, v1

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v14, v1

    iget v1, v9, Landroid/graphics/Rect;->left:I

    int-to-float v15, v1

    iget v1, v9, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    move/from16 v16, v1

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    invoke-static/range {v12 .. v18}, Lcom/artfulbits/aiCharts/Types/ChartBarOfPieType;->computeTangents(FFFFFLandroid/graphics/PointF;Landroid/graphics/PointF;)I

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v12

    iget v1, v9, Landroid/graphics/Rect;->left:I

    int-to-float v13, v1

    iget v1, v9, Landroid/graphics/Rect;->top:I

    int-to-float v14, v1

    iget v15, v3, Landroid/graphics/PointF;->x:F

    iget v1, v3, Landroid/graphics/PointF;->y:F

    goto :goto_6

    :goto_7
    iget v1, v11, Landroid/graphics/PointF;->y:F

    iget v2, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_9

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v12

    iget v13, v11, Landroid/graphics/PointF;->x:F

    iget v14, v11, Landroid/graphics/PointF;->y:F

    iget v0, v9, Landroid/graphics/Rect;->left:I

    int-to-float v15, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v17, v5

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_9
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v12, v1

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v13, v1

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v14, v1

    iget v1, v9, Landroid/graphics/Rect;->left:I

    int-to-float v15, v1

    iget v1, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    move/from16 v16, v1

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    invoke-static/range {v12 .. v18}, Lcom/artfulbits/aiCharts/Types/ChartBarOfPieType;->computeTangents(FFFFFLandroid/graphics/PointF;Landroid/graphics/PointF;)I

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v12

    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v13, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v0

    iget v15, v4, Landroid/graphics/PointF;->x:F

    iget v0, v4, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    move-object/from16 v17, v5

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_a
    return-void
.end method
