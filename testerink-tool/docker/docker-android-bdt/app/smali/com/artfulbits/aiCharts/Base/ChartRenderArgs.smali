.class public final Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;
.super Ljava/lang/Object;


# instance fields
.field public final ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

.field public final ActualYAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

.field public final ActualZAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

.field public final Area:Lcom/artfulbits/aiCharts/Base/ChartArea;

.field public Back:F

.field public final Bounds:Landroid/graphics/Rect;

.field public final Canvas:Landroid/graphics/Canvas;

.field public final Chart:Lcom/artfulbits/aiCharts/Base/ChartEngine;

.field public Front:F

.field public Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

.field public final IsRegionEnabled:Z

.field public final IsRotated:Z

.field public final Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

.field public final System:Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

.field public final Type:Lcom/artfulbits/aiCharts/Base/ChartType;

.field public final XAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

.field public final YAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

.field private a:Lcom/artfulbits/aiCharts/Base/DoubleRange;

.field private final b:Landroid/graphics/PointF;

.field private final c:Lcom/artfulbits/aiCharts/Base/ChartTransform;

.field public is3d:Z


# direct methods
.method private constructor <init>(Landroid/graphics/Canvas;Lcom/artfulbits/aiCharts/Base/ChartSeries;Landroid/graphics/Rect;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->a:Lcom/artfulbits/aiCharts/Base/DoubleRange;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->b:Landroid/graphics/PointF;

    const/4 v0, 0x0

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Canvas:Landroid/graphics/Canvas;

    iput-object p2, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getType()Lcom/artfulbits/aiCharts/Base/ChartType;

    move-result-object p1

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Type:Lcom/artfulbits/aiCharts/Base/ChartType;

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Type:Lcom/artfulbits/aiCharts/Base/ChartType;

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartType;->isRotated()Z

    move-result p1

    iput-boolean p1, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->IsRotated:Z

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Type:Lcom/artfulbits/aiCharts/Base/ChartType;

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartType;->getRequiredCoordinateSystem()Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    move-result-object p1

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->System:Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getXAxis()Lcom/artfulbits/aiCharts/Base/ChartAxis;

    move-result-object p1

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->XAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getYAxis()Lcom/artfulbits/aiCharts/Base/ChartAxis;

    move-result-object p1

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->YAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getActualZAxis()Lcom/artfulbits/aiCharts/Base/ChartAxis;

    move-result-object p1

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualZAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->a()Lcom/artfulbits/aiCharts/Base/ChartArea;

    move-result-object p1

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Area:Lcom/artfulbits/aiCharts/Base/ChartArea;

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getChart()Lcom/artfulbits/aiCharts/Base/ChartEngine;

    move-result-object p1

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Chart:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    iput-object p3, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Chart:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Chart:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->isHitTestEnabled()Z

    move-result p1

    iget-object p2, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->isRegionsEnabled()Z

    move-result p2

    and-int/2addr p1, p2

    :goto_0
    iput-boolean p1, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->IsRegionEnabled:Z

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->System:Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    sget-object p2, Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;->None:Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    if-eq p1, p2, :cond_2

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->XAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->YAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Current type requires axes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    iget-boolean p1, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->IsRotated:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->YAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->XAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    :goto_2
    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualYAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->XAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->YAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    goto :goto_2

    :goto_3
    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Area:Lcom/artfulbits/aiCharts/Base/ChartArea;

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartArea;->c()Z

    move-result p1

    iput-boolean p1, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->is3d:Z

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->System:Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    iget-object p2, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->XAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->YAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-static {p1, p2, p3, v0}, Lcom/artfulbits/aiCharts/Base/ChartTransform;->create(Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/ChartAxis;Lcom/artfulbits/aiCharts/Base/ChartAxis;)Lcom/artfulbits/aiCharts/Base/ChartTransform;

    move-result-object p1

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->c:Lcom/artfulbits/aiCharts/Base/ChartTransform;

    return-void
.end method

.method public static create(Landroid/graphics/Canvas;Lcom/artfulbits/aiCharts/Base/ChartSeries;Landroid/graphics/Rect;)Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;
    .locals 1

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;

    invoke-direct {v0, p0, p1, p2}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;-><init>(Landroid/graphics/Canvas;Lcom/artfulbits/aiCharts/Base/ChartSeries;Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public static getSideBySideOffset(Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/ChartType;Lcom/artfulbits/aiCharts/Base/ChartArea;)Lcom/artfulbits/aiCharts/Base/DoubleRange;
    .locals 7

    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartType;->POINT_WIDTH:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {p0, v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    neg-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-double v3, v1

    div-float/2addr v0, v2

    float-to-double v0, v0

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartType;->isSideBySide()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartArea;->a()Lcom/artfulbits/aiCharts/Base/l;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/artfulbits/aiCharts/Base/l;->b(Lcom/artfulbits/aiCharts/Base/ChartSeries;)I

    move-result p1

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartArea;->a()Lcom/artfulbits/aiCharts/Base/l;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/artfulbits/aiCharts/Base/l;->c(Lcom/artfulbits/aiCharts/Base/ChartSeries;)I

    move-result p0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v3

    int-to-double v5, p1

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v5

    int-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p0, p0, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, p0

    add-double/2addr v0, v3

    :cond_0
    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartArea;->b()D

    move-result-wide p0

    const-wide v5, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double p2, p0, v5

    if-nez p2, :cond_1

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    :cond_1
    new-instance p2, Lcom/artfulbits/aiCharts/Base/DoubleRange;

    mul-double v3, v3, p0

    mul-double p0, p0, v0

    invoke-direct {p2, v3, v4, p0, p1}, Lcom/artfulbits/aiCharts/Base/DoubleRange;-><init>(DD)V

    return-object p2
.end method

.method public static getStackedValue(Lcom/artfulbits/aiCharts/Base/ChartArea;Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/ChartPoint;IZ)D
    .locals 11

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    if-eqz p4, :cond_0

    invoke-virtual {p2, p3}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v4

    add-double/2addr v4, v2

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getType()Lcom/artfulbits/aiCharts/Base/ChartType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartType;->isStacked100()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    sget-object p4, Lcom/artfulbits/aiCharts/Base/ChartType;->INTERNAL_STACK_GROUP:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {p1, p4}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    iget-object p0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea;->m_visibleSeries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/artfulbits/aiCharts/Base/ChartSeries;

    if-ne p1, v6, :cond_2

    add-double/2addr v4, v2

    if-nez p2, :cond_5

    :cond_2
    if-ne p1, v6, :cond_3

    if-nez p2, :cond_1

    :cond_3
    sget-object v7, Lcom/artfulbits/aiCharts/Base/ChartType;->INTERNAL_STACK_GROUP:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v6, v7}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getType()Lcom/artfulbits/aiCharts/Base/ChartType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/artfulbits/aiCharts/Base/ChartType;->isStacked()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPoints()Lcom/artfulbits/aiCharts/Base/ChartPointCollection;

    move-result-object v6

    invoke-virtual {v6}, Lcom/artfulbits/aiCharts/Base/ChartPointCollection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    iget-wide v8, v7, Lcom/artfulbits/aiCharts/Base/ChartPoint;->a:D

    cmpl-double v10, v8, v0

    if-nez v10, :cond_4

    invoke-virtual {v7, p3}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v6

    add-double/2addr v2, v6

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getActualYAxis()Lcom/artfulbits/aiCharts/Base/ChartAxis;

    move-result-object p0

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getOrigin()D

    move-result-wide p0

    add-double/2addr v4, p0

    goto :goto_2

    :cond_6
    const-wide/high16 p0, 0x4059000000000000L    # 100.0

    mul-double v4, v4, p0

    div-double/2addr v4, v2

    :goto_2
    return-wide v4
.end method

.method public static getStackedValue(Lcom/artfulbits/aiCharts/Base/ChartArea;Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/ChartPoint;IZ[D)V
    .locals 9

    const-wide/16 v0, 0x0

    if-eqz p4, :cond_0

    invoke-virtual {p2, p3}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->a()Lcom/artfulbits/aiCharts/Base/l;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Base/l;->a(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p4

    const/4 v4, 0x0

    move-wide v5, v0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p4, :cond_3

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/artfulbits/aiCharts/Base/ChartSeries;

    if-ne p1, v1, :cond_1

    add-double/2addr v2, v5

    :cond_1
    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointsCache()Ljava/util/List;

    move-result-object v1

    sget-object v7, Lcom/artfulbits/aiCharts/Base/ChartPoint;->X_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, p2, v7}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v7

    if-ltz v7, :cond_2

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v1, p3}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v7

    add-double/2addr v5, v7

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getType()Lcom/artfulbits/aiCharts/Base/ChartType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;->isStacked100()Z

    move-result p0

    const-wide/high16 p2, 0x4059000000000000L    # 100.0

    if-eqz p0, :cond_4

    mul-double v2, v2, p2

    div-double/2addr v2, v5

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getActualYAxis()Lcom/artfulbits/aiCharts/Base/ChartAxis;

    move-result-object p0

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getOrigin()D

    move-result-wide p0

    add-double/2addr v2, p0

    move-wide p2, v5

    :goto_2
    aput-wide v2, p5, v4

    div-double/2addr v2, p2

    const/4 p0, 0x1

    aput-wide v2, p5, p0

    return-void
.end method


# virtual methods
.method public final addRegion(Landroid/graphics/Path;Landroid/graphics/Rect;Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0, p2}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1, v0}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Area:Lcom/artfulbits/aiCharts/Base/ChartArea;

    iget-object p1, p1, Lcom/artfulbits/aiCharts/Base/ChartArea;->Regions:Lcom/artfulbits/aiCharts/Base/j;

    invoke-virtual {p1, v0, p3}, Lcom/artfulbits/aiCharts/Base/j;->a(Landroid/graphics/Region;Ljava/lang/Object;)V

    return-void
.end method

.method public final addRegion(Landroid/graphics/Rect;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Area:Lcom/artfulbits/aiCharts/Base/ChartArea;

    iget-object v0, v0, Lcom/artfulbits/aiCharts/Base/ChartArea;->Regions:Lcom/artfulbits/aiCharts/Base/j;

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1, p1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1, p2}, Lcom/artfulbits/aiCharts/Base/j;->a(Landroid/graphics/Region;Ljava/lang/Object;)V

    return-void
.end method

.method public final addRegion(Landroid/graphics/RectF;Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Area:Lcom/artfulbits/aiCharts/Base/ChartArea;

    iget-object p1, p1, Lcom/artfulbits/aiCharts/Base/ChartArea;->Regions:Lcom/artfulbits/aiCharts/Base/j;

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1, v0}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v1, p2}, Lcom/artfulbits/aiCharts/Base/j;->a(Landroid/graphics/Region;Ljava/lang/Object;)V

    return-void
.end method

.method protected final draw()V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Type:Lcom/artfulbits/aiCharts/Base/ChartType;

    invoke-virtual {v0, p0}, Lcom/artfulbits/aiCharts/Base/ChartType;->draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V

    return-void
.end method

.method protected final drawMarkers()V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Type:Lcom/artfulbits/aiCharts/Base/ChartType;

    invoke-virtual {v0, p0}, Lcom/artfulbits/aiCharts/Base/ChartType;->drawMarkers(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V

    return-void
.end method

.method public final getPoint(DDLandroid/graphics/PointF;)V
    .locals 8

    iget-boolean v0, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->IsRotated:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->c:Lcom/artfulbits/aiCharts/Base/ChartTransform;

    move-wide v2, p3

    move-wide v4, p1

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/artfulbits/aiCharts/Base/ChartTransform;->getPoint(DDLandroid/graphics/PointF;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->c:Lcom/artfulbits/aiCharts/Base/ChartTransform;

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/artfulbits/aiCharts/Base/ChartTransform;->getPoint(DDLandroid/graphics/PointF;)V

    return-void
.end method

.method public final getRect(DDDDLandroid/graphics/RectF;)V
    .locals 6

    iget-object v5, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->b:Landroid/graphics/PointF;

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->b:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iput p1, p9, Landroid/graphics/RectF;->left:F

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->b:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, p9, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->b:Landroid/graphics/PointF;

    move-wide v1, p5

    move-wide v3, p7

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->b:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iput p1, p9, Landroid/graphics/RectF;->right:F

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->b:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, p9, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p9}, Landroid/graphics/RectF;->sort()V

    return-void
.end method

.method public final getSideBySideOffset()Lcom/artfulbits/aiCharts/Base/DoubleRange;
    .locals 3

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->a:Lcom/artfulbits/aiCharts/Base/DoubleRange;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Type:Lcom/artfulbits/aiCharts/Base/ChartType;

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Area:Lcom/artfulbits/aiCharts/Base/ChartArea;

    invoke-static {v0, v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getSideBySideOffset(Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/ChartType;Lcom/artfulbits/aiCharts/Base/ChartArea;)Lcom/artfulbits/aiCharts/Base/DoubleRange;

    move-result-object v0

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->a:Lcom/artfulbits/aiCharts/Base/DoubleRange;

    :cond_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->a:Lcom/artfulbits/aiCharts/Base/DoubleRange;

    return-object v0
.end method

.method public final getStackedValue(Lcom/artfulbits/aiCharts/Base/ChartPoint;IZ)D
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Area:Lcom/artfulbits/aiCharts/Base/ChartArea;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getStackedValue(Lcom/artfulbits/aiCharts/Base/ChartArea;Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/ChartPoint;IZ)D

    move-result-wide p1

    return-wide p1
.end method

.method public final getStackedValue(Lcom/artfulbits/aiCharts/Base/ChartPoint;IZ[D)V
    .locals 6

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Area:Lcom/artfulbits/aiCharts/Base/ChartArea;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getStackedValue(Lcom/artfulbits/aiCharts/Base/ChartArea;Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/ChartPoint;IZ[D)V

    return-void
.end method

.method public final isVisible(FF)Z
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method public final isVisible(FFFF)Z
    .locals 2

    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object p3, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    cmpl-float p1, p1, p3

    if-lez p1, :cond_1

    :cond_0
    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget-object p3, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float p3, p3

    cmpg-float p1, p1, p3

    if-ltz p1, :cond_2

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object p2, p0, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
