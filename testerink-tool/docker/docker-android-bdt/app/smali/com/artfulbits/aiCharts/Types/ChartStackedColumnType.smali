.class public Lcom/artfulbits/aiCharts/Types/ChartStackedColumnType;
.super Lcom/artfulbits/aiCharts/Base/ChartType;


# static fields
.field public static final SHAPE_3D:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute<",
            "Lcom/artfulbits/aiCharts/Enums/Shape3D;",
            ">;"
        }
    .end annotation
.end field

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

    sget-object v0, Lcom/artfulbits/aiCharts/Types/ChartStackedColumnType;->INTERNAL_STACK_GROUP:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartStackedColumnType;->STACK_GROUP:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    sget-object v0, Lcom/artfulbits/aiCharts/Types/ChartColumnType;->SHAPE_3D:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartStackedColumnType;->SHAPE_3D:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;-><init>()V

    sget v0, Lcom/artfulbits/aiCharts/Types/ChartStackedColumnType;->FLAG_ORIGIN_DEPENDENT:I

    sget v1, Lcom/artfulbits/aiCharts/Types/ChartStackedColumnType;->FLAG_SIDE_BY_SIDE:I

    or-int/2addr v0, v1

    sget v1, Lcom/artfulbits/aiCharts/Types/ChartStackedColumnType;->FLAG_STACKED:I

    or-int/2addr v0, v1

    sget v1, Lcom/artfulbits/aiCharts/Types/ChartStackedColumnType;->FLAG_SUPPORT_3D:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/artfulbits/aiCharts/Types/ChartStackedColumnType;->m_flags:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 31

    move-object/from16 v10, p1

    iget-object v0, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual/range {p1 .. p1}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getSideBySideOffset()Lcom/artfulbits/aiCharts/Base/DoubleRange;

    move-result-object v11

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v0

    iget v12, v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->YValueIndex:I

    iget-object v0, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointsCache()Ljava/util/List;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/artfulbits/aiCharts/Types/ChartStackedColumnType;->isRotated()Z

    move-result v25

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/4 v15, 0x1

    sub-int/2addr v0, v15

    iget-object v1, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v1

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMinimum()D

    move-result-wide v8

    iget-object v1, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v1

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMaximum()D

    move-result-wide v16

    const/4 v6, 0x0

    move-object v1, v13

    move-wide v2, v8

    move-wide/from16 v4, v16

    move v7, v0

    invoke-static/range {v1 .. v7}, Lcom/artfulbits/aiCharts/Types/ChartStackedColumnType;->getVisibleFrom(Ljava/util/List;DDII)I

    move-result v14

    move v6, v14

    invoke-static/range {v1 .. v7}, Lcom/artfulbits/aiCharts/Types/ChartStackedColumnType;->getVisibleTo(Ljava/util/List;DDII)I

    move-result v9

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    const/4 v0, 0x2

    new-array v8, v0, [D

    new-array v5, v0, [D

    :goto_0
    if-gt v14, v9, :cond_8

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v6}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {v10, v6, v12, v2, v8}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getStackedValue(Lcom/artfulbits/aiCharts/Base/ChartPoint;IZ[D)V

    invoke-virtual {v10, v6, v12, v15, v5}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getStackedValue(Lcom/artfulbits/aiCharts/Base/ChartPoint;IZ[D)V

    iget-wide v3, v11, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Minimum:D

    add-double/2addr v3, v0

    aget-wide v16, v5, v2

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    iget-wide v5, v11, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Maximum:D

    add-double/2addr v5, v0

    aget-wide v18, v8, v2

    move-object/from16 v0, p1

    move-wide v1, v3

    move-wide/from16 v3, v16

    move-object/from16 v28, v27

    move-object/from16 v29, v7

    move-object/from16 v27, v8

    move-wide/from16 v7, v18

    move/from16 v30, v9

    move-object/from16 v9, v29

    invoke-virtual/range {v0 .. v9}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getRect(DDDDLandroid/graphics/RectF;)V

    iget-boolean v0, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->is3d:Z

    if-eqz v0, :cond_6

    aget-wide v0, v26, v15

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v0, v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v4

    double-to-float v0, v0

    aget-wide v6, v27, v15

    sub-double/2addr v2, v6

    div-double/2addr v2, v4

    double-to-float v1, v2

    sget-object v2, Lcom/artfulbits/aiCharts/Types/ChartStackedColumnType$1;->a:[I

    sget-object v3, Lcom/artfulbits/aiCharts/Types/ChartStackedColumnType;->SHAPE_3D:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-object/from16 v4, v28

    invoke-virtual {v4, v3}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/artfulbits/aiCharts/Enums/Shape3D;

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Enums/Shape3D;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    packed-switch v2, :pswitch_data_0

    move v2, v14

    move-object/from16 v1, v29

    const/4 v5, 0x1

    goto/16 :goto_c

    :pswitch_0
    iget v2, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    div-float/2addr v2, v3

    if-eqz v25, :cond_0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/RectF;->height()F

    move-result v3

    goto :goto_1

    :cond_0
    invoke-virtual/range {v29 .. v29}, Landroid/graphics/RectF;->width()F

    move-result v3

    :goto_1
    if-eqz v25, :cond_1

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/RectF;->width()F

    move-result v5

    :goto_2
    move/from16 v18, v5

    goto :goto_3

    :cond_1
    invoke-virtual/range {v29 .. v29}, Landroid/graphics/RectF;->height()F

    move-result v5

    goto :goto_2

    :goto_3
    iget-object v5, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/RectF;->centerY()F

    move-result v16

    iget v7, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    add-float v17, v7, v2

    mul-float v19, v1, v3

    mul-float v20, v1, v2

    mul-float v21, v0, v3

    mul-float v22, v0, v2

    move v2, v14

    move-object v14, v5

    const/4 v5, 0x1

    move v15, v6

    move/from16 v23, v25

    move-object/from16 v24, v4

    invoke-virtual/range {v14 .. v24}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawPyramid3D(FFFFFFFFZLcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    goto/16 :goto_b

    :pswitch_1
    move v2, v14

    const/4 v5, 0x1

    iget v6, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    div-float/2addr v6, v3

    if-eqz v25, :cond_2

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/RectF;->height()F

    move-result v3

    goto :goto_4

    :cond_2
    invoke-virtual/range {v29 .. v29}, Landroid/graphics/RectF;->width()F

    move-result v3

    :goto_4
    if-eqz v25, :cond_3

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/RectF;->width()F

    move-result v7

    :goto_5
    move/from16 v18, v7

    goto :goto_6

    :cond_3
    invoke-virtual/range {v29 .. v29}, Landroid/graphics/RectF;->height()F

    move-result v7

    goto :goto_5

    :goto_6
    iget-object v14, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/RectF;->centerX()F

    move-result v15

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/RectF;->centerY()F

    move-result v16

    iget v7, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    add-float v17, v7, v6

    mul-float v19, v1, v3

    mul-float v20, v1, v6

    mul-float v21, v0, v3

    mul-float v22, v0, v6

    goto :goto_a

    :pswitch_2
    move v2, v14

    const/4 v5, 0x1

    iget v0, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    div-float v22, v0, v3

    if-eqz v25, :cond_4

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/RectF;->height()F

    move-result v0

    goto :goto_7

    :cond_4
    invoke-virtual/range {v29 .. v29}, Landroid/graphics/RectF;->width()F

    move-result v0

    :goto_7
    div-float v21, v0, v3

    if-eqz v25, :cond_5

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/RectF;->width()F

    move-result v0

    :goto_8
    move/from16 v18, v0

    goto :goto_9

    :cond_5
    invoke-virtual/range {v29 .. v29}, Landroid/graphics/RectF;->height()F

    move-result v0

    goto :goto_8

    :goto_9
    iget-object v14, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/RectF;->centerX()F

    move-result v15

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/RectF;->centerY()F

    move-result v16

    iget v0, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    add-float v17, v0, v22

    move/from16 v19, v21

    move/from16 v20, v22

    :goto_a
    move/from16 v23, v25

    move-object/from16 v24, v4

    invoke-virtual/range {v14 .. v24}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawCylinder3D(FFFFFFFFZLcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    :goto_b
    move-object/from16 v1, v29

    goto :goto_c

    :pswitch_3
    move v2, v14

    const/4 v5, 0x1

    iget-object v0, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    move-object/from16 v1, v29

    iget v3, v1, Landroid/graphics/RectF;->left:F

    iget v6, v1, Landroid/graphics/RectF;->top:F

    iget v7, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    iget v8, v1, Landroid/graphics/RectF;->right:F

    iget v9, v1, Landroid/graphics/RectF;->bottom:F

    iget v14, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    iget v15, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    add-float v22, v14, v15

    move-object/from16 v16, v0

    move/from16 v17, v3

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    move-object/from16 v23, v4

    invoke-virtual/range {v16 .. v23}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawBox3D(FFFFFFLcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    goto :goto_c

    :cond_6
    move v2, v14

    move-object/from16 v4, v28

    move-object/from16 v1, v29

    const/4 v5, 0x1

    iget-object v0, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    invoke-virtual {v0, v1, v4}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawRect(Landroid/graphics/RectF;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    iget-boolean v0, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->IsRegionEnabled:Z

    if-eqz v0, :cond_7

    invoke-virtual {v10, v1, v4}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->addRegion(Landroid/graphics/RectF;Ljava/lang/Object;)V

    :cond_7
    :goto_c
    add-int/lit8 v14, v2, 0x1

    move-object v7, v1

    move-object/from16 v5, v26

    move-object/from16 v8, v27

    move/from16 v9, v30

    const/4 v15, 0x1

    goto/16 :goto_0

    :cond_8
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
