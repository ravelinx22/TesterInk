.class public Lcom/artfulbits/aiCharts/Types/ChartAreaType;
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


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "border-style"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartAreaType;

    const-class v2, Lcom/artfulbits/aiCharts/Enums/ChartBorderStyle;

    sget-object v3, Lcom/artfulbits/aiCharts/Enums/ChartBorderStyle;->All:Lcom/artfulbits/aiCharts/Enums/ChartBorderStyle;

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartAreaType;->BORDER_STYLE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;-><init>()V

    sget v0, Lcom/artfulbits/aiCharts/Types/ChartAreaType;->FLAG_ORIGIN_DEPENDENT:I

    sget v1, Lcom/artfulbits/aiCharts/Types/ChartAreaType;->FLAG_SUPPORT_3D:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/artfulbits/aiCharts/Types/ChartAreaType;->m_flags:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 25

    move-object/from16 v6, p1

    iget-object v7, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v7}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v0

    iget v8, v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->YValueIndex:I

    invoke-virtual {v7}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointsCache()Ljava/util/List;

    move-result-object v5

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualYAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getOrigin()D

    move-result-wide v16

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_8

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    iget-object v2, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v2

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMinimum()D

    move-result-wide v18

    iget-object v2, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v2

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMaximum()D

    move-result-wide v20

    const/4 v14, 0x0

    move-object v9, v5

    move-wide/from16 v10, v18

    move-wide/from16 v12, v20

    move v15, v0

    invoke-static/range {v9 .. v15}, Lcom/artfulbits/aiCharts/Types/ChartAreaType;->getVisibleFrom(Ljava/util/List;DDII)I

    move-result v4

    move v14, v4

    invoke-static/range {v9 .. v15}, Lcom/artfulbits/aiCharts/Types/ChartAreaType;->getVisibleTo(Ljava/util/List;DDII)I

    move-result v9

    iget-boolean v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->is3d:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sub-int v0, v9, v4

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    new-array v10, v0, [F

    move v11, v4

    const/4 v12, 0x0

    :goto_0
    if-gt v11, v9, :cond_0

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v13}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v1

    invoke-virtual {v13, v8}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v14

    move-object/from16 v0, p1

    move-object/from16 v22, v3

    move-wide v3, v14

    move-object v14, v5

    move-object/from16 v5, v22

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    add-int/lit8 v0, v12, 0x1

    move-object/from16 v15, v22

    iget v1, v15, Landroid/graphics/PointF;->x:F

    aput v1, v10, v12

    add-int/lit8 v12, v0, 0x1

    iget v1, v15, Landroid/graphics/PointF;->y:F

    aput v1, v10, v0

    invoke-virtual {v13}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v1

    move-object/from16 v0, p1

    move-wide/from16 v3, v16

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    add-int/lit8 v0, v12, 0x1

    iget v1, v15, Landroid/graphics/PointF;->x:F

    aput v1, v10, v12

    add-int/lit8 v12, v0, 0x1

    iget v1, v15, Landroid/graphics/PointF;->y:F

    aput v1, v10, v0

    add-int/lit8 v11, v11, 0x1

    move-object v5, v14

    move-object v3, v15

    goto :goto_0

    :cond_0
    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    iget v1, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    iget v2, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    iget v3, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v10, v1, v2, v7}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawArea3D([FFFLcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    return-void

    :cond_1
    move-object v15, v3

    move-object v14, v5

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v3, Lcom/artfulbits/aiCharts/Types/ChartAreaType;->BORDER_STYLE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v0, v3}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/artfulbits/aiCharts/Enums/ChartBorderStyle;->Simple:Lcom/artfulbits/aiCharts/Enums/ChartBorderStyle;

    if-ne v0, v3, :cond_2

    const/4 v10, 0x1

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    :goto_1
    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    move v5, v4

    :goto_2
    if-gt v5, v9, :cond_4

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v1

    invoke-virtual {v0, v8}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v18

    move-object/from16 v0, p1

    move/from16 v23, v8

    move v8, v4

    move-wide/from16 v3, v18

    move/from16 v24, v9

    move v9, v5

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    if-ne v9, v8, :cond_3

    iget v0, v15, Landroid/graphics/PointF;->x:F

    iget v1, v15, Landroid/graphics/PointF;->y:F

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_3

    :cond_3
    iget v0, v15, Landroid/graphics/PointF;->x:F

    iget v1, v15, Landroid/graphics/PointF;->y:F

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_3
    add-int/lit8 v5, v9, 0x1

    move v4, v8

    move/from16 v8, v23

    move/from16 v9, v24

    goto :goto_2

    :cond_4
    if-eqz v10, :cond_5

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0, v11}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    :goto_4
    move-object v8, v0

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    goto :goto_4

    :goto_5
    invoke-virtual {v13}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v1

    move-object/from16 v0, p1

    move-wide/from16 v3, v16

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    iget v0, v15, Landroid/graphics/PointF;->x:F

    iget v1, v15, Landroid/graphics/PointF;->y:F

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v12}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v1

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    iget v0, v15, Landroid/graphics/PointF;->x:F

    iget v1, v15, Landroid/graphics/PointF;->y:F

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v11}, Landroid/graphics/Path;->close()V

    iget-boolean v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->IsRegionEnabled:Z

    if-eqz v0, :cond_6

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v11, v0, v7}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->addRegion(Landroid/graphics/Path;Landroid/graphics/Rect;Ljava/lang/Object;)V

    :cond_6
    if-nez v8, :cond_7

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    iget-object v1, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v11, v7, v1}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawPath(Landroid/graphics/Path;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;Landroid/graphics/Rect;)V

    return-void

    :cond_7
    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    iget-object v1, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v11, v7, v1}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->fillPath(Landroid/graphics/Path;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;Landroid/graphics/Rect;)V

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    iget-object v1, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getBorderColor()I

    move-result v1

    invoke-virtual {v0, v8, v7, v1}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->strokePath(Landroid/graphics/Path;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;I)V

    :cond_8
    return-void
.end method
