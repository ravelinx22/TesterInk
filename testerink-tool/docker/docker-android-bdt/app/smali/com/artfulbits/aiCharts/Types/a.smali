.class abstract Lcom/artfulbits/aiCharts/Types/a;
.super Lcom/artfulbits/aiCharts/Base/ChartType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artfulbits/aiCharts/Types/a$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/PointF;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Types/a;->a:Landroid/graphics/PointF;

    return-void
.end method

.method public static computeYRange(Lcom/artfulbits/aiCharts/Base/ChartType;Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;)V
    .locals 11

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPoints()Lcom/artfulbits/aiCharts/Base/ChartPointCollection;

    move-result-object p0

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->size()I

    move-result p1

    if-lez p1, :cond_4

    const-wide v0, -0x10000000000001L

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v4, 0x0

    move-wide v5, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_3

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->get(I)Lcom/artfulbits/aiCharts/Base/ChartPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY()[D

    move-result-object v1

    move-wide v7, v2

    const/4 v2, 0x0

    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_2

    aget-wide v9, v1, v2

    cmpl-double v3, v9, v5

    if-lez v3, :cond_0

    move-wide v5, v9

    :cond_0
    cmpg-double v3, v9, v7

    if-gez v3, :cond_1

    move-wide v7, v9

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    move-wide v2, v7

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v2, v3, v5, v6}, Lcom/artfulbits/aiCharts/Base/DoubleRange;->set(DD)V

    :cond_4
    return-void
.end method

.method public static computeZRange(Lcom/artfulbits/aiCharts/Base/ChartType;Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;)V
    .locals 2

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPoints()Lcom/artfulbits/aiCharts/Base/ChartPointCollection;

    move-result-object p0

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->size()I

    move-result p1

    const-wide/16 v0, 0x0

    if-lez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->get(I)Lcom/artfulbits/aiCharts/Base/ChartPoint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY()[D

    move-result-object p0

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    int-to-double p0, p0

    invoke-virtual {p2, v0, v1, p0, p1}, Lcom/artfulbits/aiCharts/Base/DoubleRange;->set(DD)V

    return-void

    :cond_0
    invoke-virtual {p2, v0, v1, v0, v1}, Lcom/artfulbits/aiCharts/Base/DoubleRange;->set(DD)V

    return-void
.end method


# virtual methods
.method protected computePlanes(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)[F
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v1, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->is3d:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualYAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualZAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    :goto_0
    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v1

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->createIterator()Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalIterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalIterator;->current()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalIterator;->next()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale$IntervalIterator;->current()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [F

    iget-boolean v2, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->is3d:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    :goto_1
    array-length v2, v1

    if-ge v3, v2, :cond_3

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    iget-object v9, p0, Lcom/artfulbits/aiCharts/Types/a;->a:Landroid/graphics/PointF;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Types/a;->a:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    aput v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    array-length p1, v1

    if-ge v3, p1, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->floatValue()F

    move-result p1

    aput p1, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-static {v1}, Ljava/util/Arrays;->sort([F)V

    return-object v1
.end method

.method public draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 20

    move-object/from16 v6, p1

    new-instance v7, Lcom/artfulbits/aiCharts/Types/a$a;

    move-object/from16 v8, p0

    invoke-direct {v7, v8}, Lcom/artfulbits/aiCharts/Types/a$a;-><init>(Lcom/artfulbits/aiCharts/Types/a;)V

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointsCache()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    const/4 v10, 0x1

    add-int/lit8 v11, v0, -0x1

    const/16 v0, 0xc

    new-array v12, v0, [F

    invoke-virtual/range {p0 .. p1}, Lcom/artfulbits/aiCharts/Types/a;->computePlanes(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)[F

    move-result-object v13

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v15, v0

    const/4 v14, 0x0

    :goto_0
    if-gt v14, v11, :cond_1

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    if-eqz v15, :cond_0

    invoke-virtual/range {v16 .. v16}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY()[D

    move-result-object v0

    array-length v5, v0

    const/4 v4, 0x1

    :goto_1
    if-ge v4, v5, :cond_0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v15

    move v3, v4

    move/from16 v18, v4

    move-object v4, v12

    move/from16 v19, v5

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Types/a;->getPoint(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Lcom/artfulbits/aiCharts/Base/ChartPoint;I[FI)V

    add-int/lit8 v17, v18, -0x1

    const/4 v5, 0x3

    move/from16 v3, v17

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Types/a;->getPoint(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Lcom/artfulbits/aiCharts/Base/ChartPoint;I[FI)V

    const/4 v5, 0x6

    move-object/from16 v2, v16

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Types/a;->getPoint(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Lcom/artfulbits/aiCharts/Base/ChartPoint;I[FI)V

    const/16 v5, 0x9

    move/from16 v3, v18

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Types/a;->getPoint(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Lcom/artfulbits/aiCharts/Base/ChartPoint;I[FI)V

    invoke-virtual {v7, v6, v12, v13}, Lcom/artfulbits/aiCharts/Types/a$a;->a(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;[F[F)V

    add-int/lit8 v4, v18, 0x1

    move/from16 v5, v19

    goto :goto_1

    :cond_0
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v15, v16

    goto :goto_0

    :cond_1
    return-void
.end method

.method public drawMarkers(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 0

    return-void
.end method

.method protected abstract drawPolygon(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;[FII)V
.end method

.method protected getPoint(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Lcom/artfulbits/aiCharts/Base/ChartPoint;I[FI)V
    .locals 7

    iget-boolean v0, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->is3d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v2

    invoke-virtual {p2, p3}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v4

    iget-object v6, p0, Lcom/artfulbits/aiCharts/Types/a;->a:Landroid/graphics/PointF;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    add-int/lit8 p2, p5, 0x1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Types/a;->a:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    aput v0, p4, p5

    add-int/lit8 p5, p2, 0x1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Types/a;->a:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    aput v0, p4, p2

    iget-object p2, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualZAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getBounds()Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->right:F

    float-to-double v0, p2

    iget-object p1, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualZAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object p1

    int-to-double p2, p3

    invoke-virtual {p1, p2, p3}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->valueToCoefficient(D)D

    move-result-wide p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p1

    double-to-float p1, v0

    aput p1, p4, p5

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v1

    int-to-double v3, p3

    iget-object v5, p0, Lcom/artfulbits/aiCharts/Types/a;->a:Landroid/graphics/PointF;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    add-int/lit8 p1, p5, 0x1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Types/a;->a:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    aput v0, p4, p5

    add-int/lit8 p5, p1, 0x1

    invoke-virtual {p2, p3}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide p2

    double-to-float p2, p2

    aput p2, p4, p1

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Types/a;->a:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    aput p1, p4, p5

    return-void
.end method

.method public getYRange(Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;)V
    .locals 1

    invoke-static {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->findArea(Lcom/artfulbits/aiCharts/Base/ChartSeries;)Lcom/artfulbits/aiCharts/Base/ChartArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getView3D()Lcom/artfulbits/aiCharts/Base/View3D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/View3D;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getType()Lcom/artfulbits/aiCharts/Base/ChartType;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/artfulbits/aiCharts/Types/a;->computeZRange(Lcom/artfulbits/aiCharts/Base/ChartType;Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getType()Lcom/artfulbits/aiCharts/Base/ChartType;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/artfulbits/aiCharts/Types/a;->computeYRange(Lcom/artfulbits/aiCharts/Base/ChartType;Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;)V

    return-void
.end method

.method public getZRange(Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;)V
    .locals 1

    invoke-static {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->findArea(Lcom/artfulbits/aiCharts/Base/ChartSeries;)Lcom/artfulbits/aiCharts/Base/ChartArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getView3D()Lcom/artfulbits/aiCharts/Base/View3D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/View3D;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getType()Lcom/artfulbits/aiCharts/Base/ChartType;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/artfulbits/aiCharts/Types/a;->computeYRange(Lcom/artfulbits/aiCharts/Base/ChartType;Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getType()Lcom/artfulbits/aiCharts/Base/ChartType;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/artfulbits/aiCharts/Types/a;->computeZRange(Lcom/artfulbits/aiCharts/Base/ChartType;Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;)V

    return-void
.end method
