.class public Lcom/artfulbits/aiCharts/Types/ChartBubbleType;
.super Lcom/artfulbits/aiCharts/Base/ChartType;


# static fields
.field public static final MAX_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MIN_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
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

    const-string v0, "bubble-min_radius"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartBubbleType;

    const-class v2, Ljava/lang/Integer;

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartBubbleType;->MIN_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "bubble-max_radius"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartBubbleType;

    const-class v2, Ljava/lang/Integer;

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartBubbleType;->MAX_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;-><init>()V

    sget v0, Lcom/artfulbits/aiCharts/Types/ChartBubbleType;->FLAG_SUPPORT_3D:I

    iput v0, p0, Lcom/artfulbits/aiCharts/Types/ChartBubbleType;->m_flags:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 25

    move-object/from16 v6, p1

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointsCache()Ljava/util/List;

    move-result-object v14

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v15

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v1, Lcom/artfulbits/aiCharts/Types/ChartBubbleType;->MIN_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v2, Lcom/artfulbits/aiCharts/Types/ChartBubbleType;->MAX_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY()[D

    move-result-object v7

    array-length v7, v7

    iget v8, v15, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->SizeValueIndex:I

    if-le v7, v8, :cond_0

    iget v7, v15, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->SizeValueIndex:I

    invoke-virtual {v4, v7}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v7

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    goto :goto_0

    :cond_1
    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double v16, v0, v2

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v1

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMinimum()D

    move-result-wide v1

    iget-object v3, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v3

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMaximum()D

    move-result-wide v3

    const/4 v12, 0x0

    move-object v7, v14

    move-wide v8, v1

    move-wide v10, v3

    move v13, v0

    invoke-static/range {v7 .. v13}, Lcom/artfulbits/aiCharts/Types/ChartBubbleType;->getVisibleFrom(Ljava/util/List;DDII)I

    move-result v18

    move/from16 v12, v18

    invoke-static/range {v7 .. v13}, Lcom/artfulbits/aiCharts/Types/ChartBubbleType;->getVisibleTo(Ljava/util/List;DDII)I

    move-result v7

    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9}, Landroid/graphics/PointF;-><init>()V

    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    :goto_1
    if-gt v12, v7, :cond_7

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v13}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v1

    iget v0, v15, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->YValueIndex:I

    invoke-virtual {v13, v0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v3

    move-object/from16 v0, p1

    move/from16 v24, v7

    move v7, v5

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    iget v0, v9, Landroid/graphics/PointF;->x:F

    iget v1, v9, Landroid/graphics/PointF;->y:F

    iget v2, v9, Landroid/graphics/PointF;->x:F

    iget v3, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v13}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY()[D

    move-result-object v0

    array-length v0, v0

    iget v1, v15, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->SizeValueIndex:I

    if-le v0, v1, :cond_2

    int-to-double v0, v7

    iget v2, v15, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->SizeValueIndex:I

    invoke-virtual {v13, v2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v2

    mul-double v2, v2, v16

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    double-to-int v0, v0

    neg-int v0, v0

    :goto_2
    int-to-float v0, v0

    invoke-virtual {v10, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    goto :goto_3

    :cond_2
    neg-int v0, v7

    goto :goto_2

    :goto_3
    invoke-virtual {v10, v11}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    iget-boolean v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->is3d:Z

    if-eqz v0, :cond_3

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v19

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v20

    iget v1, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    iget v2, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v21, v1, v2

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float v22, v1, v3

    move-object/from16 v18, v0

    move-object/from16 v23, v13

    invoke-virtual/range {v18 .. v23}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawSphere3D(FFFFLcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    goto :goto_4

    :cond_3
    iget-boolean v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->IsRegionEnabled:Z

    if-eqz v0, :cond_4

    invoke-virtual {v6, v10, v13}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->addRegion(Landroid/graphics/RectF;Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {v13}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getBackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v8, v10, v0}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    invoke-virtual {v0, v8, v13, v11}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawPath(Landroid/graphics/Path;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;Landroid/graphics/Rect;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v13}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->isBackFilterEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v13}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getBackColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_6
    invoke-virtual {v0, v11}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v1, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_4
    add-int/lit8 v12, v12, 0x1

    move v5, v7

    move/from16 v7, v24

    goto/16 :goto_1

    :cond_7
    return-void
.end method
