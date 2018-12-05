.class public Lcom/artfulbits/aiCharts/Types/ChartLineType;
.super Lcom/artfulbits/aiCharts/Base/ChartType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;
    }
.end annotation


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

.field public static final SORTED_POINTS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
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
    .locals 5

    const-string v0, "line-break_mode"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartLineType;

    const-class v2, Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;

    sget-object v3, Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;->None:Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartLineType;->BREAK_MODE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "line-break_delta"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartLineType;

    const-class v2, Ljava/lang/Double;

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartLineType;->BREAK_DELTA:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "line-break_point"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartLineType;

    const-class v2, Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartLineType;->BREAK_POINT:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "points-hit_radius"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartLineType;

    const-class v2, Ljava/lang/Integer;

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartLineType;->HIT_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "line-sorted_points"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartLineType;

    const-class v2, Ljava/lang/Boolean;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartLineType;->SORTED_POINTS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;-><init>()V

    sget v0, Lcom/artfulbits/aiCharts/Types/ChartLineType;->FLAG_SUPPORT_3D:I

    iput v0, p0, Lcom/artfulbits/aiCharts/Types/ChartLineType;->m_flags:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 34

    move-object/from16 v6, p1

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v1

    iget v7, v1, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->YValueIndex:I

    sget-object v1, Lcom/artfulbits/aiCharts/Types/ChartLineType;->SORTED_POINTS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointsCache()Ljava/util/List;

    move-result-object v2

    :goto_0
    move-object v15, v2

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPoints()Lcom/artfulbits/aiCharts/Base/ChartPointCollection;

    move-result-object v2

    goto :goto_0

    :goto_1
    sget-object v2, Lcom/artfulbits/aiCharts/Types/ChartLineType;->BREAK_MODE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v0, v2}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;

    sget-object v3, Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;->None:Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;

    const/16 v16, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    sget-object v4, Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;->Auto:Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;

    if-ne v2, v4, :cond_2

    const/16 v17, 0x1

    goto :goto_3

    :cond_2
    const/16 v17, 0x0

    :goto_3
    sget-object v2, Lcom/artfulbits/aiCharts/Types/ChartLineType;->BREAK_DELTA:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v0, v2}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    sget-object v2, Lcom/artfulbits/aiCharts/Types/ChartLineType;->HIT_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v0, v2}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/artfulbits/aiCharts/Types/ChartLineType;->isStacked()Z

    move-result v20

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    if-eqz v17, :cond_3

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    xor-int/lit8 v3, v0, 0x1

    :cond_3
    move/from16 v21, v3

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v5

    if-eqz v1, :cond_4

    iget-object v1, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v1

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMinimum()D

    move-result-wide v22

    iget-object v1, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v1

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMaximum()D

    move-result-wide v24

    const/4 v13, 0x0

    move-object v8, v15

    move-wide/from16 v9, v22

    move-wide/from16 v11, v24

    move v14, v0

    invoke-static/range {v8 .. v14}, Lcom/artfulbits/aiCharts/Types/ChartLineType;->getVisibleFrom(Ljava/util/List;DDII)I

    move-result v1

    move v13, v1

    invoke-static/range {v8 .. v14}, Lcom/artfulbits/aiCharts/Types/ChartLineType;->getVisibleTo(Ljava/util/List;DDII)I

    move-result v0

    move v8, v0

    goto :goto_4

    :cond_4
    move v8, v0

    const/4 v1, 0x0

    :goto_4
    const/4 v0, 0x0

    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9}, Landroid/graphics/PointF;-><init>()V

    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10}, Landroid/graphics/PointF;-><init>()V

    move-object v12, v0

    move v11, v1

    :goto_5
    if-gt v11, v8, :cond_c

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    if-eqz v20, :cond_5

    invoke-virtual {v6, v13, v7, v5}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getStackedValue(Lcom/artfulbits/aiCharts/Base/ChartPoint;IZ)D

    move-result-wide v0

    :goto_6
    move-wide/from16 v22, v0

    goto :goto_7

    :cond_5
    invoke-virtual {v13, v7}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v0

    goto :goto_6

    :goto_7
    invoke-virtual {v13}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v24

    move-object/from16 v0, p1

    move-object v14, v2

    move-wide/from16 v1, v24

    move/from16 v30, v7

    move v7, v4

    move-wide/from16 v3, v22

    const/16 v31, 0x1

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    if-eqz v12, :cond_a

    if-eqz v21, :cond_8

    if-eqz v17, :cond_7

    invoke-virtual {v13}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v0

    invoke-virtual {v12}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v2

    sub-double/2addr v0, v2

    cmpg-double v2, v0, v18

    if-gtz v2, :cond_6

    goto :goto_8

    :cond_6
    const/4 v5, 0x0

    goto :goto_9

    :cond_7
    sget-object v0, Lcom/artfulbits/aiCharts/Types/ChartLineType;->BREAK_POINT:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v12, v0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_8
    :goto_8
    const/4 v5, 0x1

    :goto_9
    if-eqz v5, :cond_a

    iget-boolean v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->is3d:Z

    if-eqz v0, :cond_9

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    iget v1, v9, Landroid/graphics/PointF;->x:F

    iget v2, v9, Landroid/graphics/PointF;->y:F

    iget v3, v10, Landroid/graphics/PointF;->x:F

    iget v4, v10, Landroid/graphics/PointF;->y:F

    iget v5, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    move/from16 v32, v8

    iget v8, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    move-object/from16 v33, v15

    iget v15, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    add-float v28, v8, v15

    move-object/from16 v22, v0

    move/from16 v23, v1

    move/from16 v24, v2

    move/from16 v25, v3

    move/from16 v26, v4

    move/from16 v27, v5

    move-object/from16 v29, v12

    invoke-virtual/range {v22 .. v29}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawLine3D(FFFFFFLcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    goto :goto_a

    :cond_9
    move/from16 v32, v8

    move-object/from16 v33, v15

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    invoke-virtual {v0, v9, v10, v12}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    goto :goto_a

    :cond_a
    move/from16 v32, v8

    move-object/from16 v33, v15

    :goto_a
    iget-boolean v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->IsRegionEnabled:Z

    if-eqz v0, :cond_b

    invoke-virtual {v14}, Landroid/graphics/Path;->reset()V

    iget v0, v10, Landroid/graphics/PointF;->x:F

    iget v1, v10, Landroid/graphics/PointF;->y:F

    int-to-float v2, v7

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    invoke-virtual {v14}, Landroid/graphics/Path;->close()V

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v14, v0, v13}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->addRegion(Landroid/graphics/Path;Landroid/graphics/Rect;Ljava/lang/Object;)V

    :cond_b
    invoke-virtual {v9, v10}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    add-int/lit8 v11, v11, 0x1

    move v4, v7

    move-object v12, v13

    move-object v2, v14

    move/from16 v7, v30

    move/from16 v8, v32

    move-object/from16 v15, v33

    const/4 v5, 0x1

    goto/16 :goto_5

    :cond_c
    return-void
.end method

.method protected drawIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Types/ChartLineType;->m_iconPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Lcom/artfulbits/aiCharts/Types/ChartLineType;->drawIconInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;Landroid/graphics/Paint;Z)V

    return-void
.end method
