.class public Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;
.super Lcom/artfulbits/aiCharts/Types/ChartPieType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;
    }
.end annotation


# static fields
.field public static final LINES_COLOR:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLOTS_GAP_SCALE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLOTS_SIZE_SCALE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public static final SPLIT_MODE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute<",
            "Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final SPLIT_POINT:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final SPLIT_VALUE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "pie-split_mode"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;

    const-class v2, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;

    sget-object v3, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;->Percentage:Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;->SPLIT_MODE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "pie-split_value"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;

    const-class v2, Ljava/lang/Double;

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;->SPLIT_VALUE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "pie-split_point"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;

    const-class v2, Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;->SPLIT_POINT:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "pie-plots_scale"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;

    const-class v2, Ljava/lang/Double;

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;->PLOTS_SIZE_SCALE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "pie-plots_gap"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;

    const-class v2, Ljava/lang/Double;

    const-wide v3, 0x3f9eb851eb851eb8L    # 0.03

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;->PLOTS_GAP_SCALE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "pie-to-pie-line_color"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;

    const-class v2, Ljava/lang/Integer;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;->LINES_COLOR:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Types/ChartPieType;-><init>()V

    return-void
.end method

.method protected static computeTangents(FFFFFLandroid/graphics/PointF;Landroid/graphics/PointF;)I
    .locals 5

    sub-float/2addr p3, p0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float p3, p3, v0

    sub-float/2addr p4, p1

    mul-float p4, p4, v0

    mul-float v0, p3, p3

    mul-float v1, p4, p4

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    mul-float v2, p2, p2

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v3

    add-float v4, p2, v1

    cmpl-float v4, v3, v4

    if-gtz v4, :cond_2

    sub-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p2, v3, p2

    if-gez p2, :cond_0

    goto :goto_1

    :cond_0
    sub-float p2, v2, v0

    add-float/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v0, v0, v3

    div-float/2addr p2, v0

    mul-float v0, p2, p2

    sub-float/2addr v2, v0

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    mul-float v1, p2, p3

    div-float/2addr v1, v3

    mul-float p2, p2, p4

    div-float/2addr p2, v3

    add-float/2addr p0, v1

    mul-float p4, p4, v0

    div-float/2addr p4, v3

    add-float v1, p0, p4

    add-float/2addr p1, p2

    mul-float v0, v0, p3

    div-float/2addr v0, v3

    sub-float p2, p1, v0

    sub-float/2addr p0, p4

    add-float/2addr p1, v0

    cmpg-float p3, p2, p1

    if-gez p3, :cond_1

    invoke-virtual {p5, v1, p2}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p6, p0, p1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    :cond_1
    invoke-virtual {p6, v1, p2}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p5, p0, p1}, Landroid/graphics/PointF;->set(FF)V

    :goto_0
    const/4 p0, 0x2

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected computePointCorners(Lcom/artfulbits/aiCharts/Base/ChartPoint;FLandroid/graphics/Rect;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 6

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    sget-object v1, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;->EXPAND_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {p1, v1}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    float-to-double v1, p2

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpg-double v5, v1, v3

    if-gez v5, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    invoke-static {p2}, Landroid/util/FloatMath;->cos(F)F

    move-result v1

    mul-float v1, v1, p3

    invoke-static {p2}, Landroid/util/FloatMath;->sin(F)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float p3, p3, p2

    int-to-float p2, v0

    add-float/2addr p2, v1

    iput p2, p5, Landroid/graphics/PointF;->x:F

    iput p2, p4, Landroid/graphics/PointF;->x:F

    int-to-float p1, p1

    sub-float p2, p1, p3

    iput p2, p4, Landroid/graphics/PointF;->y:F

    add-float/2addr p1, p3

    iput p1, p5, Landroid/graphics/PointF;->y:F

    return-void

    :cond_0
    int-to-float p1, v0

    iget p2, p3, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    invoke-virtual {p4, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    iget p2, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    invoke-virtual {p5, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 28

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v7, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v1, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;->PLOTS_SIZE_SCALE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object v2, v7, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v3, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;->PLOTS_GAP_SCALE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, v7, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v5, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;->SPLIT_MODE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v4, v5}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;

    iget-object v5, v7, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v8, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;->SPLIT_VALUE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

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

    sget-object v5, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;->SPLIT_POINT:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

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
    sget-object v5, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;->Position:Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;

    if-ne v4, v5, :cond_3

    invoke-interface {v12, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-ge v5, v13, :cond_1

    :cond_3
    sget-object v5, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;->Value:Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType$SplitMode;

    if-ne v4, v5, :cond_4

    cmpg-double v5, v23, v8

    if-ltz v5, :cond_1

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

    double-to-int v4, v4

    add-int/2addr v1, v4

    iput v1, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v1, v16

    iget v4, v1, Landroid/graphics/Rect;->right:I

    double-to-int v2, v2

    sub-int/2addr v4, v2

    iput v4, v1, Landroid/graphics/Rect;->left:I

    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double v10, v10, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v21, v21, v2

    div-double v10, v10, v21

    double-to-int v2, v10

    neg-int v2, v2

    move-object v3, v6

    move-object/from16 v6, p0

    invoke-virtual {v6, v7, v14, v0, v2}, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;->drawPie(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Ljava/util/List;Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v8

    const/4 v0, 0x0

    invoke-virtual {v6, v7, v15, v1, v0}, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;->drawPie(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Ljava/util/List;Landroid/graphics/Rect;I)Landroid/graphics/Rect;

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

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;->computePointCorners(Lcom/artfulbits/aiCharts/Base/ChartPoint;FLandroid/graphics/Rect;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    iget-object v0, v7, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    iget-object v1, v7, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v2, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;->LINES_COLOR:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_9

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

    if-lez v1, :cond_7

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v12, v1

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v13, v1

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v14, v1

    iget v15, v10, Landroid/graphics/PointF;->x:F

    iget v1, v10, Landroid/graphics/PointF;->y:F

    move/from16 v16, v1

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    invoke-static/range {v12 .. v18}, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;->computeTangents(FFFFFLandroid/graphics/PointF;Landroid/graphics/PointF;)I

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v12

    iget v13, v10, Landroid/graphics/PointF;->x:F

    iget v14, v10, Landroid/graphics/PointF;->y:F

    :goto_6
    iget v15, v3, Landroid/graphics/PointF;->x:F

    iget v1, v3, Landroid/graphics/PointF;->y:F

    move/from16 v16, v1

    move-object/from16 v17, v5

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_7

    :cond_7
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

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v15, v1

    iget v1, v9, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    move/from16 v16, v1

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    invoke-static/range {v12 .. v18}, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;->computeTangents(FFFFFLandroid/graphics/PointF;Landroid/graphics/PointF;)I

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v12

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v13, v1

    iget v1, v9, Landroid/graphics/Rect;->top:I

    int-to-float v14, v1

    goto :goto_6

    :goto_7
    iget v1, v11, Landroid/graphics/PointF;->y:F

    iget v2, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_8

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v12, v1

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v13, v1

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v14, v1

    iget v15, v11, Landroid/graphics/PointF;->x:F

    iget v1, v11, Landroid/graphics/PointF;->y:F

    move/from16 v16, v1

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    invoke-static/range {v12 .. v18}, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;->computeTangents(FFFFFLandroid/graphics/PointF;Landroid/graphics/PointF;)I

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v12

    iget v13, v11, Landroid/graphics/PointF;->x:F

    iget v14, v11, Landroid/graphics/PointF;->y:F

    iget v15, v4, Landroid/graphics/PointF;->x:F

    iget v0, v4, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    move-object/from16 v17, v5

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

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

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v15, v1

    iget v1, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    move/from16 v16, v1

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    invoke-static/range {v12 .. v18}, Lcom/artfulbits/aiCharts/Types/ChartPieOfPieType;->computeTangents(FFFFFLandroid/graphics/PointF;Landroid/graphics/PointF;)I

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v12

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v13, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v0

    iget v15, v4, Landroid/graphics/PointF;->x:F

    iget v0, v4, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    move-object/from16 v17, v5

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_9
    return-void
.end method
