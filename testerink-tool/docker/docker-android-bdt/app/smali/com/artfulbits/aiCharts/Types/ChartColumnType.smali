.class public Lcom/artfulbits/aiCharts/Types/ChartColumnType;
.super Lcom/artfulbits/aiCharts/Base/ChartType;


# static fields
.field public static final MARKER_ALIGN:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute<",
            "Lcom/artfulbits/aiCharts/Enums/Alignment;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHAPE_3D:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute<",
            "Lcom/artfulbits/aiCharts/Enums/Shape3D;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "column-shape"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartColumnType;

    const-class v2, Lcom/artfulbits/aiCharts/Enums/Shape3D;

    sget-object v3, Lcom/artfulbits/aiCharts/Enums/Shape3D;->Box:Lcom/artfulbits/aiCharts/Enums/Shape3D;

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartColumnType;->SHAPE_3D:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "column-label_align"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartColumnType;

    const-class v2, Lcom/artfulbits/aiCharts/Enums/Alignment;

    sget-object v3, Lcom/artfulbits/aiCharts/Enums/Alignment;->Near:Lcom/artfulbits/aiCharts/Enums/Alignment;

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartColumnType;->MARKER_ALIGN:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;-><init>()V

    sget v0, Lcom/artfulbits/aiCharts/Types/ChartColumnType;->FLAG_SIDE_BY_SIDE:I

    sget v1, Lcom/artfulbits/aiCharts/Types/ChartColumnType;->FLAG_ORIGIN_DEPENDENT:I

    or-int/2addr v0, v1

    sget v1, Lcom/artfulbits/aiCharts/Types/ChartColumnType;->FLAG_SUPPORT_3D:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/artfulbits/aiCharts/Types/ChartColumnType;->m_flags:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 30

    move-object/from16 v10, p1

    invoke-virtual/range {p1 .. p1}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getSideBySideOffset()Lcom/artfulbits/aiCharts/Base/DoubleRange;

    move-result-object v11

    iget-object v0, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v0

    iget v12, v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->YValueIndex:I

    iget-object v0, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointsCache()Ljava/util/List;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/artfulbits/aiCharts/Types/ChartColumnType;->isRotated()Z

    move-result v25

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualYAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getOrigin()D

    move-result-wide v26

    iget-object v1, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v1

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMinimum()D

    move-result-wide v8

    iget-object v1, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v1

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMaximum()D

    move-result-wide v14

    const/4 v6, 0x0

    move-object v1, v13

    move-wide v2, v8

    move-wide v4, v14

    move v7, v0

    invoke-static/range {v1 .. v7}, Lcom/artfulbits/aiCharts/Types/ChartColumnType;->getVisibleFrom(Ljava/util/List;DDII)I

    move-result v16

    move/from16 v6, v16

    invoke-static/range {v1 .. v7}, Lcom/artfulbits/aiCharts/Types/ChartColumnType;->getVisibleTo(Ljava/util/List;DDII)I

    move-result v15

    new-instance v14, Landroid/graphics/RectF;

    invoke-direct {v14}, Landroid/graphics/RectF;-><init>()V

    move/from16 v9, v16

    :goto_0
    if-gt v9, v15, :cond_9

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v7}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v0

    iget-wide v2, v11, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Minimum:D

    add-double v1, v0, v2

    invoke-virtual {v7, v12}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v3

    invoke-virtual {v7}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v5

    move-object/from16 v28, v7

    iget-wide v7, v11, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Maximum:D

    add-double/2addr v5, v7

    move-object/from16 v0, p1

    move-object/from16 v29, v11

    move-object/from16 v11, v28

    move-wide/from16 v7, v26

    move/from16 v28, v9

    move-object v9, v14

    invoke-virtual/range {v0 .. v9}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getRect(DDDDLandroid/graphics/RectF;)V

    iget v0, v14, Landroid/graphics/RectF;->left:F

    iget v1, v14, Landroid/graphics/RectF;->top:F

    iget v2, v14, Landroid/graphics/RectF;->right:F

    iget v3, v14, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->isVisible(FFFF)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->is3d:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/artfulbits/aiCharts/Types/ChartColumnType$1;->b:[I

    sget-object v1, Lcom/artfulbits/aiCharts/Types/ChartColumnType;->SHAPE_3D:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v11, v1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/artfulbits/aiCharts/Enums/Shape3D;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Enums/Shape3D;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    iget v0, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    div-float v20, v0, v1

    if-eqz v25, :cond_0

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v0

    goto :goto_1

    :cond_0
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v0

    :goto_1
    div-float v19, v0, v1

    if-eqz v25, :cond_1

    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v0

    :goto_2
    move/from16 v18, v0

    goto :goto_3

    :cond_1
    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v0

    goto :goto_2

    :goto_3
    iget-object v0, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerY()F

    move-result v16

    iget v2, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    add-float v17, v2, v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v9, v14

    move-object v14, v0

    move v0, v15

    move v15, v1

    move/from16 v23, v25

    move-object/from16 v24, v11

    invoke-virtual/range {v14 .. v24}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawPyramid3D(FFFFFFFFZLcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    goto/16 :goto_c

    :pswitch_1
    move-object v9, v14

    move v0, v15

    iget v2, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    div-float v20, v2, v1

    if-eqz v25, :cond_2

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v2

    goto :goto_4

    :cond_2
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v2

    :goto_4
    div-float v19, v2, v1

    if-eqz v25, :cond_3

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v1

    :goto_5
    move/from16 v18, v1

    goto :goto_6

    :cond_3
    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v1

    goto :goto_5

    :goto_6
    iget-object v14, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v15

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v16

    iget v1, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    add-float v17, v1, v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    goto :goto_a

    :pswitch_2
    move-object v9, v14

    move v0, v15

    iget v2, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    div-float v22, v2, v1

    if-eqz v25, :cond_4

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v2

    goto :goto_7

    :cond_4
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v2

    :goto_7
    div-float v21, v2, v1

    if-eqz v25, :cond_5

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v1

    :goto_8
    move/from16 v18, v1

    goto :goto_9

    :cond_5
    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v1

    goto :goto_8

    :goto_9
    iget-object v14, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v15

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v16

    iget v1, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    add-float v17, v1, v22

    move/from16 v19, v21

    move/from16 v20, v22

    :goto_a
    move/from16 v23, v25

    move-object/from16 v24, v11

    invoke-virtual/range {v14 .. v24}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawCylinder3D(FFFFFFFFZLcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    goto :goto_c

    :pswitch_3
    move-object v9, v14

    move v0, v15

    iget-object v1, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    iget v2, v9, Landroid/graphics/RectF;->left:F

    iget v3, v9, Landroid/graphics/RectF;->top:F

    iget v4, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    iget v5, v9, Landroid/graphics/RectF;->right:F

    iget v6, v9, Landroid/graphics/RectF;->bottom:F

    iget v7, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    iget v8, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    add-float/2addr v7, v8

    move-object v8, v11

    invoke-virtual/range {v1 .. v8}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawBox3D(FFFFFFLcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    goto :goto_c

    :cond_6
    move-object v9, v14

    move v0, v15

    iget-object v1, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    invoke-virtual {v1, v9, v11}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawRect(Landroid/graphics/RectF;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    iget-boolean v1, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->IsRegionEnabled:Z

    if-eqz v1, :cond_8

    invoke-virtual {v10, v9, v11}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->addRegion(Landroid/graphics/RectF;Ljava/lang/Object;)V

    goto :goto_c

    :cond_7
    :goto_b
    move-object v9, v14

    move v0, v15

    :cond_8
    :goto_c
    add-int/lit8 v1, v28, 0x1

    move v15, v0

    move-object v14, v9

    move-object/from16 v11, v29

    move v9, v1

    goto/16 :goto_0

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMarkerPoint(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Lcom/artfulbits/aiCharts/Base/ChartPoint;ILandroid/graphics/PointF;)V
    .locals 8

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v0

    sget-object v2, Lcom/artfulbits/aiCharts/Types/ChartColumnType$1;->a:[I

    sget-object v3, Lcom/artfulbits/aiCharts/Types/ChartColumnType;->MARKER_ALIGN:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {p2, v3}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/artfulbits/aiCharts/Enums/Alignment;

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Enums/Alignment;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    const-wide/16 p2, 0x0

    :goto_0
    move-wide v5, p2

    goto :goto_1

    :pswitch_0
    iget-object p2, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualYAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getOrigin()D

    move-result-wide p2

    goto :goto_0

    :pswitch_1
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    iget-object v4, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualYAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getOrigin()D

    move-result-wide v4

    invoke-virtual {p2, p3}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide p2

    add-double/2addr v4, p2

    mul-double p2, v4, v2

    goto :goto_0

    :pswitch_2
    invoke-virtual {p2, p3}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide p2

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getSideBySideOffset()Lcom/artfulbits/aiCharts/Base/DoubleRange;

    move-result-object p2

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/DoubleRange;->center()D

    move-result-wide p2

    add-double v3, v0, p2

    move-object v2, p1

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
