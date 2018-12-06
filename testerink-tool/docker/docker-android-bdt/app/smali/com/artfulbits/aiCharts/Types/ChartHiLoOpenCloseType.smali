.class public Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType;
.super Lcom/artfulbits/aiCharts/Base/ChartType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType$Style;
    }
.end annotation


# static fields
.field public static final STYLE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute<",
            "Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType$Style;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "hiloopenclose-style"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType;

    const-class v2, Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType$Style;

    sget-object v3, Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType$Style;->All:Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType$Style;

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType;->STYLE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;-><init>()V

    sget v0, Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType;->FLAG_SIDE_BY_SIDE:I

    iput v0, p0, Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType;->m_flags:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 31

    move-object/from16 v6, p1

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual/range {p1 .. p1}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getSideBySideOffset()Lcom/artfulbits/aiCharts/Base/DoubleRange;

    move-result-object v7

    invoke-virtual {v7}, Lcom/artfulbits/aiCharts/Base/DoubleRange;->center()D

    move-result-wide v8

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointsCache()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v1

    iget v3, v1, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->HighValueIndex:I

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v1

    iget v4, v1, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->LowValueIndex:I

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v1

    iget v1, v1, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->CloseValueIndex:I

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v2

    iget v2, v2, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->OpenValueIndex:I

    sget-object v10, Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType;->STYLE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v0, v10}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType$Style;

    sget-object v10, Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType$Style;->All:Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType$Style;

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v0, v10, :cond_1

    sget-object v10, Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType$Style;->OpenOnly:Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType$Style;

    if-ne v0, v10, :cond_0

    goto :goto_0

    :cond_0
    const/16 v17, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v17, 0x1

    :goto_1
    sget-object v10, Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType$Style;->All:Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType$Style;

    if-eq v0, v10, :cond_3

    sget-object v10, Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType$Style;->CloseOnly:Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType$Style;

    if-ne v0, v10, :cond_2

    goto :goto_2

    :cond_2
    const/16 v18, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/16 v18, 0x1

    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v12

    iget-object v10, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v10}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v10

    invoke-virtual {v10}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMinimum()D

    move-result-wide v19

    iget-object v10, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v10}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v10

    invoke-virtual {v10}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMaximum()D

    move-result-wide v21

    const/4 v15, 0x0

    move-object v10, v5

    move-wide/from16 v11, v19

    move-wide/from16 v13, v21

    move/from16 v16, v0

    invoke-static/range {v10 .. v16}, Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType;->getVisibleFrom(Ljava/util/List;DDII)I

    move-result v23

    move/from16 v15, v23

    invoke-static/range {v10 .. v16}, Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType;->getVisibleTo(Ljava/util/List;DDII)I

    move-result v10

    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11}, Landroid/graphics/PointF;-><init>()V

    new-instance v12, Landroid/graphics/PointF;

    invoke-direct {v12}, Landroid/graphics/PointF;-><init>()V

    new-instance v13, Landroid/graphics/PointF;

    invoke-direct {v13}, Landroid/graphics/PointF;-><init>()V

    new-instance v14, Landroid/graphics/PointF;

    invoke-direct {v14}, Landroid/graphics/PointF;-><init>()V

    new-instance v15, Landroid/graphics/PointF;

    invoke-direct {v15}, Landroid/graphics/PointF;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    move-object/from16 v24, v14

    move/from16 v14, v23

    :goto_4
    if-gt v14, v10, :cond_6

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v25, v10

    move-object/from16 v10, v16

    check-cast v10, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v10}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v19

    add-double v19, v19, v8

    invoke-virtual {v10, v4}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v21

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    move-object/from16 v28, v13

    move/from16 v27, v14

    move v14, v1

    move v13, v2

    move-wide/from16 v1, v19

    move/from16 v16, v4

    move/from16 v29, v14

    move v14, v3

    move-wide/from16 v3, v21

    move-object/from16 v19, v5

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    invoke-virtual {v10}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v0

    add-double v1, v0, v8

    invoke-virtual {v10, v14}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v3

    move-object/from16 v0, p1

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    invoke-virtual {v0, v11, v12, v10}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    if-eqz v17, :cond_4

    invoke-virtual {v10}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v0

    iget-wide v2, v7, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Minimum:D

    add-double v1, v0, v2

    invoke-virtual {v10, v13}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v3

    move-object/from16 v0, p1

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    invoke-virtual {v10}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v0

    add-double v1, v0, v8

    invoke-virtual {v10, v13}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v3

    move-object/from16 v0, p1

    move-object/from16 v5, v26

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    invoke-virtual {v0, v15, v5, v10}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    goto :goto_5

    :cond_4
    move-object/from16 v5, v26

    :goto_5
    if-eqz v18, :cond_5

    invoke-virtual {v10}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v0

    iget-wide v2, v7, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Maximum:D

    add-double v1, v0, v2

    move/from16 v3, v29

    invoke-virtual {v10, v3}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v20

    move-object/from16 v0, p1

    move-object/from16 v30, v7

    move v7, v3

    move-wide/from16 v3, v20

    move-object/from16 v20, v5

    move-object/from16 v5, v28

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    invoke-virtual {v10}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v0

    add-double v1, v0, v8

    invoke-virtual {v10, v7}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v3

    move-object/from16 v0, p1

    move-object/from16 v5, v24

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    move-object/from16 v2, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v2, v10}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    goto :goto_6

    :cond_5
    move-object/from16 v20, v5

    move-object/from16 v30, v7

    move-object/from16 v2, v24

    move-object/from16 v1, v28

    move/from16 v7, v29

    :goto_6
    add-int/lit8 v0, v27, 0x1

    move-object/from16 v24, v2

    move v2, v13

    move v3, v14

    move/from16 v4, v16

    move-object/from16 v5, v19

    move/from16 v10, v25

    move v14, v0

    move-object v13, v1

    move v1, v7

    move-object/from16 v0, v20

    move-object/from16 v7, v30

    goto/16 :goto_4

    :cond_6
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
    .locals 7

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v0

    sget-object v1, Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType$1;->a:[I

    sget-object v2, Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType;->STYLE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {p1, v2}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType$Style;

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType$Style;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x4

    new-array v1, v1, [I

    iget v6, v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->LowValueIndex:I

    aput v6, v1, v4

    iget v4, v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->HighValueIndex:I

    aput v4, v1, v3

    iget v3, v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->OpenValueIndex:I

    aput v3, v1, v5

    iget v0, v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->CloseValueIndex:I

    aput v0, v1, v2

    goto :goto_0

    :pswitch_1
    new-array v1, v2, [I

    iget v2, v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->LowValueIndex:I

    aput v2, v1, v4

    iget v2, v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->HighValueIndex:I

    aput v2, v1, v3

    iget v0, v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->CloseValueIndex:I

    aput v0, v1, v5

    goto :goto_0

    :pswitch_2
    new-array v1, v2, [I

    iget v2, v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->LowValueIndex:I

    aput v2, v1, v4

    iget v2, v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->HighValueIndex:I

    aput v2, v1, v3

    iget v0, v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->OpenValueIndex:I

    aput v0, v1, v5

    goto :goto_0

    :pswitch_3
    new-array v1, v5, [I

    iget v2, v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->LowValueIndex:I

    aput v2, v1, v4

    iget v0, v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->HighValueIndex:I

    aput v0, v1, v3

    :goto_0
    invoke-static {p0, p1, p2, v1}, Lcom/artfulbits/aiCharts/Types/ChartHiLoOpenCloseType;->computeYRange(Lcom/artfulbits/aiCharts/Base/ChartType;Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;[I)V

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
